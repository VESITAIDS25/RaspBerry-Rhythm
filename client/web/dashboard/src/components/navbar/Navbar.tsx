import "./navbar.scss";
import { FaUserDoctor } from "react-icons/fa6";
import { CiWavePulse1 } from "react-icons/ci";



const Navbar = () => {
  return (
    <div className="navbar">
      <div className="logo">
      <CiWavePulse1 size={30} color="red"/>
        <span>Rhythm</span>
        <CiWavePulse1 size={30} color="red"/>
      </div>
      <div className="icons">
        <div className="notification">
          <img src="/notifications.svg" alt="" />
          <span>1</span>
        </div>
        <div className="user">
        <FaUserDoctor size={18} color="#57ff03"/>
          <span>Dr Manoj Kumar</span>
        </div>
      </div>
    </div>
  );
};

export default Navbar;
