import React from 'react';
import { Link, hashHistory } from 'react-router';

class SplashAbout extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="container-fluid" id="about">
        <div className="about-header">FULLY FEATURED.</div>

        <div className="stories">
          <div className="photo">
            <img src="https://oceanus.feralhosting.com/bx1th0j/assets/splash/feature1.png" alt="The Real Steel"/>
            <div className="about-title">Auto-photo Resizing</div>
            <div className="about-description">Upload once and we magically resize for you. Perfect for any display.</div>
          </div>
          <div className="photo">
            <img src="https://oceanus.feralhosting.com/bx1th0j/assets/splash/feature2.png" alt="Belize" />
            <div className="about-title">Easy Text Formatting</div>
            <div className="about-description">Compliment your photos with beautifully formatted text.</div>
          </div>
          <div className="photo">
            <img src="https://oceanus.feralhosting.com/bx1th0j/assets/splash/feature3.png" alt="The Large Hadron Collider" />
            <div className="about-title">Responsive Design</div>
            <div className="about-description">Your Composure stories look beautiful on any screen or device.</div>
          </div>
        </div>

      </div>
    );
  }
}

export default SplashAbout;
