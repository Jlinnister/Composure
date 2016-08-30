import React from 'react';

const SplashMain = () => (

  <div className="container-fluid splash">
    <nav>
      <ul className="options pull-right">
        <li className="welcome-link">Welcome</li>
        <li className="about-link">About</li>
        <li className="examples-link">Examples</li>
        <li className="open-login">Login</li>
        <li className="open-signup">Sign Up</li>
      </ul>
    </nav>

    <div className="row">
      <div className="col-sm-12">
        <h1 className="landing-title">A BEAUTIFUL WEBSITE FOR YOUR PHOTO STORIES</h1>
        <h2 className="landing-subtitle">Composure gives you a clean personal website for your photography and a home for your adventures and stories.</h2>
        <h2 className="landing-subtitle">Your photography belongs here.</h2>
        <div className="get-started-guest">
          <div className="guest-login-button">GET STARTED</div>
        </div>
        <div className="check-out-demo">Register for a free account or try out a guest account.</div>
      </div>
    </div>
  </div>

);

export default SplashMain;
