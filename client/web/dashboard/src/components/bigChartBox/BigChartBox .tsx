import {
  Area,
  AreaChart,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
} from "recharts";
import "./bigChartBox.scss";

const data = [
  {
    name: "Sun",
    walking: 4000,
    running: 2400,
    cycling: 2400,
    swimming: 1200,
  },
  {
    name: "Mon",
    walking: 3000,
    running: 1398,
    cycling: 2210,
    swimming: 980,
  },
  {
    name: "Tue",
    walking: 2000,
    running: 9800,
    cycling: 2290,
    swimming: 1300,
  },
  {
    name: "Wed",
    walking: 2780,
    running: 3908,
    cycling: 2000,
    swimming: 1600,
  },
  {
    name: "Thu",
    walking: 1890,
    running: 4800,
    cycling: 2181,
    swimming: 1100,
  },
  {
    name: "Fri",
    walking: 2390,
    running: 3800,
    cycling: 2500,
    swimming: 1400,
  },
  {
    name: "Sat",
    walking: 3490,
    running: 4300,
    cycling: 2100,
    swimming: 1700,
  },
];

const BigChartBox = () => {
  return (
    <div className="bigChartBox">
      <h1>Patients Average Activity Levels</h1>
      <div className="chart">
        <ResponsiveContainer width="99%" height="100%">
          <AreaChart
            data={data}
            margin={{
              top: 40,
              right: 30,
              left: 0,
              bottom: 0,
            }}
          >
            <XAxis dataKey="name" />
            <YAxis />
            <Tooltip />
            <Area
              type="monotone"
              dataKey="walking"
              stackId="1"
              stroke="#0088FE"
              fill="#0088FE"
            />
            <Area
              type="monotone"
              dataKey="running"
              stackId="1"
              stroke="#00C49F"
              fill="#00C49F"
            />
            <Area
              type="monotone"
              dataKey="cycling"
              stackId="1"
              stroke="#FFBB28"
              fill="#FFBB28"
            />
            <Area
              type="monotone"
              dataKey="swimming"
              stackId="1"
              stroke="#FF8042"
              fill="#FF8042"
            />
          </AreaChart>
        </ResponsiveContainer>
      </div>
    </div>
  );
};

export default BigChartBox;
