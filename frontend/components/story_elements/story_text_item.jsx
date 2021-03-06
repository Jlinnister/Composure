import React from 'React';
import { Link, hashHistory } from 'react-router';

class StoryTextItem extends React.Component {

  removeTextArea() {
    this.props.removeTextArea(this.props.idx);
  }
  update(field) {
    return e => { this.props.setPartState(field,e.currentTarget.value) };
  }

  updateBody() {
    return e => {
      const value = e.currentTarget.value.replace('\\n', '\n');
      this.props.setPartState("body",value);
    };
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

  editCheck() {
    if (this.props.edit === 'true') {
      return (<button type="button" onClick={this.removeTextArea.bind(this)} className="text-area-remove">Remove</button>);
    }
  }

  render() {
    let { title, body } = this.props.part;

    return (
      <div className="story-text-item">
        <div className="row">
          <div className="col-md-6 col-md-offset-3">
            <input className="form-control" type="text" id="story-text-form-title" value={title} onChange={this.update("title")} placeholder="Title (Optional)" />
            <textarea className="form-control" id="story-text-form-body" value={body} onChange={this.updateBody()} placeholder="Write your story here. (Optional)" ></textarea>
            {this.editCheck()}
          </div>
        </div>
      </div>
		);
  }

}

export default StoryTextItem;
