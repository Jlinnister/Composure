import React from 'react';
import { Link, hashHistory } from 'react-router';

class SplashExamples extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="container-fluid" id="examples">
        <div className="examples-title">TELL YOUR STORY WITH COMPOSURE</div>
        <h2 className="examples-subtitle">
          Just like these amazing folks
        </h2>
        <div className="stories">
          <div className="photo">
            <Link to="/the-real-steel"><img src="https://exposure.imgix.net/production/posts/183018/cover-photo/cover-1466125923.jpg?w=500&h=500&q=58&fm=pjpg&auto=format&sharp=4&crop=&fit=crop" alt="The Real Steel"/></Link>
            <div className="photo-title">The Real Steel</div>
            <div className="example-title"><a href="http://stories.blacksheepcycling.cc/">Black Sheep Cycling</a></div>
            <div className="example-description">Makers of limited release cycling apparel. Tellers of good stories.</div>
          </div>
          <div className="photo">
            <Link to="/belize"><img src="https://exposure.imgix.net/production/posts/168603/cover-photo/cover-1460539503.jpg?w=500&h=500&q=58&fm=pjpg&auto=format&sharp=4&crop=&fit=crop" alt="Belize" /></Link>
            <div className="photo-title">Belize</div>
            <div className="example-title"><a href="https://wwf.exposure.co/">World Wildlife Fund</a></div>
            <div className="example-description">WWF is building a future where people and nature thrive.</div>
          </div>
          <div className="photo">
            <Link to="/the-large-hadron-collider"><img src="https://exposure.imgix.net/production/posts/50421/cover-photo/cover-1405074651.jpg?w=1500&h=900&q=58&fm=pjpg&auto=format&sharp=4&crop=&fit=crop" alt="The Large Hadron Collider" /></Link>
            <div className="photo-title">The Large Hadron Collider</div>
            <div className="example-title"><a href="https://flord.exposure.co/">Francois Lord</a></div>
            <div className="example-description">Computer Graphics, Photography, Music and a little bit of Math and Philosophy.</div>
          </div>
        </div>
      </div>
    );
  }
}

export default SplashExamples;
