import React from 'React';
import { Link, hashHistory } from 'react-router';

class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '',
      password: '',
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    if (this.props.location.query.demo === "true") {
      const guestUser = ['g', 'u', 'e', 's', 't', 'p', 'a', 's', 's', 'w', 'o', 'r', 'd'];
      let idx = 0;
      let interval = setInterval(()=>{
        if (idx < 5) {
          const name = this.state.username + guestUser[idx];
          this.setState({ username: name });
        } else if (idx < 13) {
          const pw = this.state.password + guestUser[idx];
          this.setState({ password: pw })
        } else {
          this.props.login(this.state);
          clearInterval(interval);
        }
        idx += 1;
      }, 200);
    }
  }

  componentDidUpdate() {
    this.redirectIfLoggedIn();
  }

  redirectIfLoggedIn() {
    if (this.props.loggedIn) {
      hashHistory.push("/storyboard");
    }
  }

  splashPage() {
      hashHistory.push("/");
  }

  update(field) {
    return e => { this.setState({ [field]: e.currentTarget.value }); };
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = this.state;
    this.props.login(user);
  }

  renderErrors() {
    return (
      <div className="errors">
        {this.props.errors.map( (error, i) => (
          <div key="error-{i}">{ error }</div>
        ))}
      </div>
    );
  }

  render() {
    return (
      <div className="login-page">
        <div className="container login-form-container">
          <div className="row">
            <div className="col-md-4 col-md-offset-4">
              <div className="login-form-title" onClick={this.splashPage}>
                COMPOSURE
              </div>

              {this.props.errors ? this.renderErrors() : null}
              <form onSubmit={this.handleSubmit} className="login-form-box">

                <input className="form-control" type="text" id="login-form-username" value={this.state.username} onChange={this.update("username")} placeholder="Username" />
                <input className="form-control" type="password" id="login-form-password" value={this.state.password} onChange={this.update("password")} placeholder="Password" />

                <input className="btn btn-primary login-user" type="submit" value="Log In" />

              </form>
            </div>
          </div>
        </div>
      </div>
		);
  }

}

export default Login;
