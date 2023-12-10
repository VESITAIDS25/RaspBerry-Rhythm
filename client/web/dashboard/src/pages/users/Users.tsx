import { GridColDef } from "@mui/x-data-grid";
import DataTable from "../../components/dataTable/DataTable";
import "./Users.scss";
import { userRows } from "../../data";

const columns: GridColDef[] = [
  { field: "id", headerName: "ID", width: 50 },
  {
    field: "firstName",
    type: "string",
    headerName: "First Name",
    width: 90,
  },
  {
    field: "lastName",
    type: "string",
    headerName: "Last Name",
    width: 90,
  },
  {
    field: "age",
    type: "number",
    headerName: "Age",
    width: 10,
  },
  {
    field: "bloodType",
    type: "string",
    headerName: "Blood Group",
    width: 100,
  },
  {
    field: "heartCondition",
    type: "string",
    headerName: "Heart Problem",
    width: 150,
  },
  {
    field: "medications",
    type: "string",
    headerName: "Prescribed Medications",
    width: 200,
  },
  {
    field: "lastVisit",
    type: "string",
    headerName: "Last Visit",
    width: 150,
  },
  {
    field: "nextAppointment",
    type: "string",
    headerName: "Upcoming Appointment",
    width: 180,
  },
];


const Users = () => {
  return (
    <div className="users">
      <div className="info">
        <h1>Patients</h1>
      </div>
      <DataTable slug="users" columns={columns} rows={userRows}/>
    </div>
  );
};

export default Users;
