import express from "express";
import cors from "cors";
import { google } from "googleapis";
import { OAuth2Client } from "google-auth-library";
import dotenv from "dotenv";
import bodyParser from "body-parser";

dotenv.config();

const app = express();
const port = 5000;

const scopes = ["https://www.googleapis.com/auth/fitness.activity.read"];

const now = Date.now();
const oneWeekAgo = now - 7 * 24 * 60 * 60 * 1000;

const clientId = process.env.GOOGLE_OAUTH_CLIENT_ID;
const clientSecret = process.env.GOOGLE_OAUTH_CLIENT_SECRET;
const redirectUri = process.env.GOOGLE_OAUTH_REDIRECT_URI;

const oauth2Client = new OAuth2Client(clientId, clientSecret, redirectUri);

app.use(bodyParser.json());
app.use(cors());

app.get("/api", async (req, res) => {
  try {
    if (!req.query.code) {
      const url = oauth2Client.generateAuthUrl({
        access_type: "offline",
        scope: scopes,
        state: "/api", // Store destination URL in state
      });
      res.redirect(url);
    } else {
      const { code, state } = req.query;
      if (state !== "/api") {
        return res.status(400).send("Invalid state parameter");
      }

      const { tokens } = await oauth2Client.getToken(code);
      oauth2Client.setCredentials(tokens);

      const fitness = google.fitness({ version: "v1", auth: oauth2Client });

      const monthStart = new Date();
      monthStart.setDate(1); // Set to the first day of the month
      monthStart.setHours(0, 0, 0, 0); // Set time to beginning of the day
      monthStart.setMonth(monthStart.getMonth() - 1); // Move back one month

      const dailyStepCounts = [];

      for (let i = 0; i < 30; i++) {
        // Fetch data for each day of the previous month
        const dayStart = new Date(monthStart);
        dayStart.setDate(dayStart.getDate() + i);

        const startTime = dayStart.getTime();
        const endTime = startTime + 24 * 60 * 60 * 1000; // Next day

        const stepData = await fitness.users.dataset.aggregate({
          userId: "me",
          requestBody: {
            aggregateBy: [
              {
                dataTypeName: "com.google.step_count.delta",
                dataSourceId:
                  "derived:com.google.step_count.delta:com.google.android.gms:estimated_steps",
              },
            ],
            bucketByTime: { durationMillis: 24 * 60 * 60 * 1000 },
            startTimeMillis: startTime,
            endTimeMillis: endTime,
          },
        });

        let totalSteps = 0;
        if (stepData?.data?.bucket) {
          stepData.data.bucket.forEach((bucket) => {
            totalSteps += bucket.dataset[0].point[0].value[0].intVal || 0;
          });
        }

        dailyStepCounts.push({
          date: dayStart.toISOString(),
          steps: totalSteps,
        });
      }

      res.json({ dailyStepCounts });
    }
  } catch (error) {
    console.error(error);
    res.status(500).send("Error processing request");
  }
});

app.listen(port, () => {
  console.log(`Fit is listening at port: ${port}`);
});
