import React from 'React';
import { Link, hashHistory } from 'react-router';

class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '',
      email: '',
      password: '',
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidUpdate() {
    this.redirectIfLoggedIn();
  }

  redirectIfLoggedIn() {
    if (this.props.loggedIn) {
      hashHistory.push("/");
    }
  }

  update(field) {
    return e => { this.setState({ [field]: e.currentTarget.value }); };
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = this.state;
    console.log(this.props);
    console.log(this.props.errors);
    this.props.login({user});
  }

	// navLink(){
	// 	if (this.props.formType === "login") {
	// 		return <Link to="/signup">sign up instead</Link>;
	// 	} else {
	// 		return <Link to="/login">log in instead</Link>;
	// 	}
	// }
  //
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
      <div className="container login-form-container">
        <div className="row">
          <div className="col-md-4 col-md-offset-4">
            <div className="login-form-title">
              COMPOSURE
            </div>

            {this.props.errors ? this.renderErrors() : null}

            <form onSubmit={this.handleSubmit} className="login-form-box">

              <input className="form-control" type="text" id="login-form-username" value={this.state.username} onChange={this.update("username")} placeholder="Username" />
              <input className="form-control" type="text" id="login-form-email" value={this.state.email} onChange={this.update("email")} placeholder="Email" />
              <input className="form-control" type="password" id="login-form-password" value={this.state.password} onChange={this.update("password")} placeholder="Password" />

              <input className="btn btn-primary submit-user" type="submit" value="Get Started" />

            </form>
          </div>
        </div>
      </div>
		);
  }

}

export default Login;
