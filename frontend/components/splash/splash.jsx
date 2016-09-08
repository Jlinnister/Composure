import React from 'react';

import SplashNavBar from './splash_nav_bar';
import SplashMain from './splash_main';
import SplashAbout from './splash_about';
import SplashExamples from './splash_examples';


export default class Splash extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <SplashMain />
        <SplashAbout />
        <SplashExamples />
        <div id="footer">
          <h2>Created by Jeff Lin</h2>
          <h2>Composure is inspired by <a href="http://www.exposure.co">Exposure.co</a></h2>
          <h2>All content and images are property of their respective owners</h2>
        </div>
      </div>
    );
  }
}
