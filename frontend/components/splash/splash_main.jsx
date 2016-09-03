import React from 'react';
import { Link, hashHistory } from 'react-router';

class SplashMain extends React.Component {
  constructor(props) {
    super(props);
  }

  guestLogin() {
    hashHistory.push({
      pathname: '/login',
      query: {
        demo: true,
      },
    });
  }

  render() {
    return (
      <div className="container-fluid splash">
        <nav>
          <Link to="/" className="logo pull-left">COMPOSURE</Link>
          <ul className="options pull-right">
            <li className="welcome-link">Welcome</li>
            <li className="about-link">About</li>
            <li className="examples-link">Examples</li>
            <Link to="/login"><li className="open-login">Login</li></Link>
            <Link to="/signup"><li className="open-signup">Sign Up</li></Link>
          </ul>
        </nav>

        <div className="row">
          <div className="col-sm-12">
            <h1 className="landing-title">A BEAUTIFUL WEBSITE FOR YOUR PHOTO STORIES</h1>
            <h2 className="landing-subtitle">
              Composure gives you a clean personal website for your photography and a home for your adventures and stories.
            </h2>
            <h2 className="landing-subtitle">Your photography belongs here.</h2>
            <div className="get-started-guest">
              <div className="guest-login-button" onClick={this.guestLogin}>GUEST LOGIN</div>
            </div>
            <div className="check-out-demo">
              Register for a free account or try out a guest account.
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default SplashMain;
