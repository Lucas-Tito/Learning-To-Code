import logo from "../../images/logo.svg"
import "../../styles/header.css"


export default function Header(){
    return (
        <header>
            <div className="logoContainer">
                <img className="logo" src={logo}/> 
                <span>VotingResults</span>
            </div>
            <nav>
                {/* <ul className="nav_links">
                    <li>Pricing</li>
                    <li>About</li>
                    <li>Contact</li>
                </ul> */}
                <h4>Web - Exercise 3</h4>
            </nav>
        </header>
    )
}