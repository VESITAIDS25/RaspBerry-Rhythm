import "./topBox.scss";
import { topDealUsers } from "../../data.ts";
import { IoIosAlert } from "react-icons/io";

const TopBox = () => {
  return (
    <div className="topBox">
      <h1>
        Patients' Cardiac Risk <IoIosAlert color='red' size={18}/>
      </h1>

      <div className="list">
        {topDealUsers.map((user) => (
          <div className="listItem" key={user.id}>
            <div className="user">
              <img src={user.img} alt="" />
              <div className="userTexts">
                <span className="username">{user.username}</span>
                <span className="email">{user.email}</span>
              </div>
            </div>
            <span className="amount">{user.cardiacRisk}</span>
          </div>
        ))}
      </div>
    </div>
  );
};

export default TopBox;
