import { Cell, Pie, PieChart, ResponsiveContainer, Tooltip } from "recharts";
import "./pieChartBox.scss";

const data = [
  { name: "Hypertension", value: 15, color: "#0088FE" },
  { name: "Coronary Artery", value: 27, color: "#FFBB28" },
  { name: "Heart Failure", value: 25, color: "#FF8042" },
  { name: "Other", value: 33, color: "#00C49F" },
];

const PieChartBox = () => {
  return (
    <div className="pieChartBox">
      <h1>Diagnoses Distribution</h1>
      <div className="chart">
        <ResponsiveContainer height={300}>
          <PieChart>
            <Tooltip contentStyle={{ background: "white", borderRadius: "5px" }} />
            <Pie
              data={data}
              innerRadius={"70%"}
              outerRadius={"90%"}
              paddingAngle={5}
              dataKey="value"
            >
              {data.map((item) => (
                <Cell key={item.name} fill={item.color} />
              ))}
            </Pie>
          </PieChart>
        </ResponsiveContainer>
      </div>
      <div className="options">
        {data.map((item) => (
          <div className="option" key={item.name}>
            <div className="title">
              <div className="dot" style={{ backgroundColor: item.color }} />
              <span>{item.name}</span>
            </div>
            <div className="value">{item.value}%</div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default PieChartBox;
