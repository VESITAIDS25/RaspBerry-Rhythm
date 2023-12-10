export const menu = [
  {
    id: 1,
    title: "main",
    listItems: [
      {
        id: 1,
        title: "Dashboard",
        url: "/",
        icon: "home.svg",
      },
      {
        id: 2,
        title: "Profile",
        url: "/patient/1",
        icon: "profile.svg",
      },
      {
        id: 3,
        title: "Patients",
        url: "/patients",
        icon: "user.svg",
      },
    ],
  },
  {
    id: 2,
    title: "appointments",
    listItems: [
      {
        id: 1,
        title: "Appointments",
        url: "/doctor/appointments",
        icon: "order.svg",
      },
      {
        id: 2,
        title: "Calendar",
        url: "/doctor/calendar",
        icon: "calendar.svg",
      },
    ],
  },
  {
    id: 3,
    title: "records",
    listItems: [
      {
        id: 1,
        title: "Medical Records",
        url: "/doctor/records",
        icon: "post.svg",
      },
      {
        id: 2,
        title: "Prescriptions",
        url: "/doctor/prescriptions",
        icon: "note.svg",
      },
    ],
  },
  {
    id: 4,
    title: "analytics",
    listItems: [
      {
        id: 1,
        title: "Analytics",
        url: "/doctor/analytics",
        icon: "form.svg",
      },
      {
        id: 2,
        title: "Reports",
        url: "/doctor/reports",
        icon: "element.svg",
      },
    ],
  },
  {
    id: 5,
    listItems: [
      {
        id: 1,
        title: "Settings",
        url: "/doctor/settings",
        icon: "setting.svg",
      },
    ],
  },
];


export const topDealUsers = [
  {
    id: 1,
    img: "https://images.pexels.com/photos/8405873/pexels-photo-8405873.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load",
    username: "Elva McDonald",
    email: "elva@gmail.com",
    cardiacRisk: "High",
  },
  {
    id: 2,
    img: "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1600",
    username: "Linnie Nelson",
    email: "linnie@gmail.com",
    cardiacRisk: "High",
  },
  {
    id: 3,
    img: "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1600",
    username: "Brent Reeves",
    email: "brent@gmail.com",
    cardiacRisk: "Moderate",
  },
  {
    id: 4,
    img: "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1600",
    username: "Adeline Watson",
    email: "adeline@gmail.com",
    cardiacRisk: "Moderate",
  },
  {
    id: 5,
    img: "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1600",
    username: "Juan Harrington",
    email: "juan@gmail.com",
    cardiacRisk: "Low",
  },
  {
    id: 6,
    img: "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1600",
    username: "Augusta McGee",
    email: "augusta@gmail.com",
    cardiacRisk: "Low",
  },
  {
    id: 7,
    img: "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=1600",
    username: "Angel Thomas",
    email: "angel@gmail.com",
    cardiacRisk: "Low",
  },
];

export const chartBoxUser = {
  color: "#8884d8",
  icon: "/userIcon.svg",
  title: "Total Patients",
  number: "950",
  dataKey: "patients",
  percentage: 45,
  chartData: [
    { name: "Sun", patients: 120 },
    { name: "Mon", patients: 180 },
    { name: "Tue", patients: 150 },
    { name: "Wed", patients: 210 },
    { name: "Thu", patients: 120 },
    { name: "Fri", patients: 150 },
    { name: "Sat", patients: 135 },
  ],
};

export const chartBoxProduct = {
  color: "skyblue",
  icon: "/productIcon.svg",
  title: "Total Appointments",
  number: "162",
  dataKey: "appointments",
  percentage: 21,
  chartData: [
    { name: "Sun", appointments: 16 },
    { name: "Mon", appointments: 21 },
    { name: "Tue", appointments: 25 },
    { name: "Wed", appointments: 32 },
    { name: "Thu", appointments: 20 },
    { name: "Fri", appointments: 25 },
    { name: "Sat", appointments: 22 },
  ],
};

export const chartBoxRevenue = {
  color: "teal",
  icon: "/revenueIcon.svg",
  title: "Total Cardiac Procedures",
  number: "275",
  dataKey: "cardiacProcedures",
  percentage: 18,
  chartData: [
    { name: "Sun", cardiacProcedures: 8 },
    { name: "Mon", cardiacProcedures: 10 },
    { name: "Tue", cardiacProcedures: 5 },
    { name: "Wed", cardiacProcedures: 14 },
    { name: "Thu", cardiacProcedures: 4 },
    { name: "Fri", cardiacProcedures: 12 },
    { name: "Sat", cardiacProcedures: 9 },
  ],
};

export const chartBoxConversion = {
  color: "gold",
  icon: "/conversionIcon.svg",
  title: "Patient Risk Conversion Rate",
  number: "15%",
  dataKey: "riskConversionRate",
  percentage: 15,
  chartData: [
    { name: "Sun", riskConversionRate: 10 },
    { name: "Mon", riskConversionRate: 17 },
    { name: "Tue", riskConversionRate: 15 },
    { name: "Wed", riskConversionRate: 10 },
    { name: "Thu", riskConversionRate: 10 },
    { name: "Fri", riskConversionRate: 15 },
    { name: "Sat", riskConversionRate: 13 },
  ],
};


export const barChartBoxRevenue = {
  title: "Services Revenue",
  color: "violet",
  dataKey: "Revenue",
  chartData: [
    {
      name: "Sun",
      Revenue: 4000,
    },
    {
      name: "Mon",
      Revenue: 3000,
    },
    {
      name: "Tue",
      Revenue: 2000,
    },
    {
      name: "Wed",
      Revenue: 2780,
    },
    {
      name: "Thu",
      Revenue: 1890,
    },
    {
      name: "Fri",
      Revenue: 2390,
    },
    {
      name: "Sat",
      cardiacRevenue: 3490,
    },
  ],
};


export const barChartBoxVisit = {
  title: "Patient Appointments",
  color: "#FF8042",
  dataKey: "appointments",
  chartData: [
    {
      name: "Sun",
      appointments: 18,
    },
    {
      name: "Mon",
      appointments: 25,
    },
    {
      name: "Tue",
      appointments: 22,
    },
    {
      name: "Wed",
      appointments: 30,
    },
    {
      name: "Thu",
      appointments: 20,
    },
    {
      name: "Fri",
      appointments: 28,
    },
    {
      name: "Sat",
      appointments: 24,
    },
  ],
};

export const userRows = [
  {
    id: 1,
    lastName: "Smith",
    firstName: "Alice",
    age: 55,
    bloodType: "O+",
    heartCondition: "Arrhythmia",
    medications: ["Metoprolol", "Warfarin"],
    lastVisit: "2023-11-10",
    nextAppointment: "2024-01-05",
  },
  {
    id: 2,
    lastName: "Johnson",
    firstName: "Robert",
    age: 62,
    bloodType: "A-",
    heartCondition: "Coronary Artery Disease",
    medications: ["Atorvastatin", "Clopidogrel"],
    lastVisit: "2023-11-18",
    nextAppointment: "2024-02-10",
  },
  {
    id: 3,
    lastName: "Garcia",
    firstName: "Emily",
    age: 48,
    bloodType: "AB+",
    heartCondition: "Heart Failure",
    medications: ["Furosemide", "Carvedilol"],
    lastVisit: "2023-12-05",
    nextAppointment: "2024-03-20",
  },
  {
    id: 4,
    lastName: "Brown",
    firstName: "William",
    age: 65,
    bloodType: "B+",
    heartCondition: "Atrial Fibrillation",
    medications: ["Diltiazem", "Rivaroxaban"],
    lastVisit: "2023-11-25",
    nextAppointment: "2024-01-15",
  },
  {
    id: 5,
    lastName: "Jones",
    firstName: "Sarah",
    age: 58,
    bloodType: "O-",
    heartCondition: "Hypertrophic Cardiomyopathy",
    medications: ["Verapamil", "Enalapril"],
    lastVisit: "2023-12-08",
    nextAppointment: "2024-02-25",
  },
  {
    id: 6,
    lastName: "Miller",
    firstName: "Michael",
    age: 52,
    bloodType: "A+",
    heartCondition: "Valvular Heart Disease",
    medications: ["Digoxin", "Apixaban"],
    lastVisit: "2023-12-02",
    nextAppointment: "2024-02-18",
  },
  {
    id: 7,
    lastName: "Davis",
    firstName: "Karen",
    age: 60,
    bloodType: "B-",
    heartCondition: "Cardiomyopathy",
    medications: ["Spironolactone", "Metolazone"],
    lastVisit: "2023-11-28",
    nextAppointment: "2024-01-20",
  },
  {
    id: 8,
    lastName: "Rodriguez",
    firstName: "David",
    age: 47,
    bloodType: "AB-",
    heartCondition: "Myocarditis",
    medications: ["Ibuprofen", "Colchicine"],
    lastVisit: "2023-12-15",
    nextAppointment: "2024-03-05",
  },
  {
    id: 9,
    lastName: "Martinez",
    firstName: "Jessica",
    age: 50,
    bloodType: "O+",
    heartCondition: "Pericarditis",
    medications: ["Indomethacin", "Prednisone"],
    lastVisit: "2023-11-22",
    nextAppointment: "2024-01-10",
  },
  {
    id: 10,
    lastName: "Hernandez",
    firstName: "Daniel",
    age: 55,
    bloodType: "A+",
    heartCondition: "Cardiogenic Shock",
    medications: ["Dobutamine", "Milrinone"],
    lastVisit: "2023-12-10",
    nextAppointment: "2024-02-28",
  },
  {
    id: 11,
    lastName: "Lopez",
    firstName: "Maria",
    age: 43,
    bloodType: "B-",
    heartCondition: "Rheumatic Heart Disease",
    medications: ["Penicillin", "Aspirin"],
    lastVisit: "2023-11-30",
    nextAppointment: "2024-01-25",
  },
  {
    id: 12,
    lastName: "Gonzalez",
    firstName: "Carlos",
    age: 57,
    bloodType: "AB+",
    heartCondition: "Peripheral Artery Disease",
    medications: ["Cilostazol", "Clopidogrel"],
    lastVisit: "2023-12-18",
    nextAppointment: "2024-03-10",
  },
  {
    id: 13,
    lastName: "Perez",
    firstName: "Anna",
    age: 49,
    bloodType: "O-",
    heartCondition: "Endocarditis",
    medications: ["Antibiotics", "Doxycycline"],
    lastVisit: "2023-11-26",
    nextAppointment: "2024-01-18",
  },
  {
    id: 14,
    lastName: "Wilson",
    firstName: "Richard",
    age: 61,
    bloodType: "A-",
    heartCondition: "Pulmonary Embolism",
    medications: ["Heparin", "Rivaroxaban"],
    lastVisit: "2023-12-05",
    nextAppointment: "2024-02-20",
  },
  {
    id: 15,
    lastName: "Anderson",
    firstName: "Linda",
    age: 54,
    bloodType: "B+",
    heartCondition: "Ventricular Tachycardia",
    medications: ["Amiodarone", "Procainamide"],
    lastVisit: "2023-12-12",
    nextAppointment: "2024-03-01",
  },
];


export const singleUser = {
  id: 1,
  title: "Dr. Manoj Kumar",
  img: "https://images.pexels.com/photos/17397364/pexels-photo-17397364.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load",
  info: {
    username: "DrManoj",
    fullname: "Manoj Kumar",
    email: "drmanojkumar@gmail.com",
    phone: "9977234531",
  },
  chart: {
    dataKeys: [
      { name: "heartRate", color: "#82ca9d" },
      { name: "bloodPressure", color: "#8884d8" },
    ],
    data: [
      {
        name: "Sun",
        heartRate: 70,
        bloodPressure: 120,
      },
      {
        name: "Mon",
        heartRate: 68,
        bloodPressure: 122,
      },
      {
        name: "Tue",
        heartRate: 72,
        bloodPressure: 118,
      },
      {
        name: "Wed",
        heartRate: 75,
        bloodPressure: 124,
      },
      {
        name: "Thu",
        heartRate: 73,
        bloodPressure: 120,
      },
      {
        name: "Fri",
        heartRate: 70,
        bloodPressure: 122,
      },
      {
        name: "Sat",
        heartRate: 71,
        bloodPressure: 118,
      },
    ],
  },
  activities: [
    {
      text: "Dr. Manoj Kumar reviewed patient records",
      time: "2 day ago",
    },
    {
      text: "Dr. Manoj Kumar conducted stress tests",
      time: "1 week ago",
    },
    {
      text: "Dr. Manoj Kumar attended cardiology conference",
      time: "2 weeks ago",
    },
    {
      text: "Dr. Manoj Kumar scheduled patient appointments",
      time: "1 month ago",
    },
    {
      text: "Dr. Manoj Kumar conducted echocardiograms",
      time: "1 month ago",
    },
    {
      text: "Dr. Manoj Kumar attended medical seminar",
      time: "2 months ago",
    },
  ],
  schedule: [
    {
      text: "Patient consultation",
      time: "09:00 AM - 10:00 AM",
      day: "Monday",
    },
    {
      text: "Medical procedures",
      time: "11:00 AM - 02:00 PM",
      day: "Tuesday",
    },
    {
      text: "Clinical research",
      time: "08:00 AM - 01:00 PM",
      day: "Wednesday",
    },
    {
      text: "Patient rounds",
      time: "10:30 AM - 12:30 PM",
      day: "Thursday",
    },
    {
      text: "Administrative tasks",
      time: "09:00 AM - 11:00 AM",
      day: "Friday",
    },
  ],
};

