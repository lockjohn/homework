import React from 'react';
import GiphysIndex from './giphys_index';
import GiphysSearchContainer from './giphys_search_container';

export class GiphySearch extends React.Component {
  constructor (props) {
    super(props);
    this.state = {
        searchTerm: ''
    };

    //bind
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleInput = this.handleInput.bind(this);
  }
  handleSubmit(e) {
    e.preventDefault;
    this.props.fetchSearchGiphys(this.state);
  }
  handleInput() {
    e.preventDefault;
    this.state.setState(e.target.value);
  }

  render () {
    return (
      <form onSubmit={handleSubmit}>
        <label>Giphy Search From
        <input onChange={handleInput} value={this.state.searchTerm}></input>
        <input type="submit" value="Submit"></input></label>
      </form>
    );
  }
}
