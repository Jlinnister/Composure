import React from 'React';
import { Link, hashHistory } from 'react-router';

class StoryTextItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: '',
      body: '',
      position: null,
      story_id: null, //ensure story_id in database model for text area
    };
    this.createTextArea = this.createTextArea.bind(this);
  }

  // componentDidUpdate() {
  //   this.redirectIfLoggedIn();
  // }
  //
  // redirectIfLoggedIn() {
  //   if (this.props.loggedIn) {
  //     hashHistory.push("/storyboard");
  //   }
  // }

  update(field) {
    return e => { this.setState({ [field]: e.currentTarget.value }); };
  }

  updateBody() {
    return e => {
      const value = e.currentTarget.value.replace('\\n', '\n');
      this.setState({ body: value });
    };
  }


  createTextArea(e) {
    e.preventDefault();
    const text_area = this.state;
    this.props.createTextArea(text_area);
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
      <div className="story-text-item">
          <div className="row">
            <div className="col-md-4 col-md-offset-4">

              <form onSubmit={this.createTextArea} className="story-text-form-box">

                <input className="form-control" type="text" id="story-text-form-title" value={this.state.title} onChange={this.update("title")} placeholder="Title (Optional)" />
                <textarea className="form-control" id="story-text-form-body" value={this.state.body} onChange={this.updateBody()} placeholder="Write your story here. (Optional)" ></textarea>
                <input className="btn btn-primary story-text-form" type="submit" value="Save" />

              </form>
            </div>
        </div>
      </div>
		);
  }

}

export default StoryTextItem;
