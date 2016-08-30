import React from 'React';
import { Link, hashHistory } from 'react-router';

class Signup extends React.Component {
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
      hashHistory.push("/storyboard/");
    }
  }

  update(field) {
    return e => { this.setState({ [field]: e.currentTarget.value }); };
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = this.state;
    this.props.signup(user);
  }

	// navLink(){
	// 	if (this.props.formType === "signup") {
	// 		return <Link to="/signup">sign up instead</Link>;
	// 	} else {
	// 		return <Link to="/signup">log in instead</Link>;
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
      <div className="signup-page">
        <div className="container signup-form-container">
          <div className="row">
            <div className="col-md-4 col-md-offset-4">
              <div className="signup-form-title">
                COMPOSURE
              </div>

              {this.props.errors ? this.renderErrors() : null}

              <form onSubmit={this.handleSubmit} className="signup-form-box">

                <input className="form-control" type="text" id="signup-form-username" value={this.state.username} onChange={this.update("username")} placeholder="Username" />
                <input className="form-control" type="text" id="signup-form-email" value={this.state.email} onChange={this.update("email")} placeholder="Email" />
                <input className="form-control" type="password" id="signup-form-password" value={this.state.password} onChange={this.update("password")} placeholder="Password" />

                <input className="btn btn-primary submit-user" type="submit" value="Get Started" />

              </form>
            </div>
          </div>
        </div>
      </div>
		);
  }

}

export default Signup;
