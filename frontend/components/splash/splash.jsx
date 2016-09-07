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
      </div>
    );
  }
}
