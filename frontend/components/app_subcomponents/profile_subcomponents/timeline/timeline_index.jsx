const React = require('react');
const TimelineIndexItem = require('./timeline_index_item');
const PostStore = require('../../../../stores/post_store');
const SelectedUserStore = require('../../../../stores/selected_user_store');
const CurrentUserStore = require('../../../../stores/current_user_store');
const ClientActions = require('../../../../actions/client_actions');

const TimelineIndex = React.createClass({
  getInitialState(){
    return { user: this.props.user, posts: PostStore.all() };
  },

  componentDidMount(){
    this.listener = PostStore.addListener(this._onChange);
    const selector = this.props.user.id === CurrentUserStore.get().id;
    ClientActions.getTimeline(this.props.user.id, selector);
  },

  componentWillReceiveProps(newProps){
    this.setState({user: newProps.user });
    if(newProps.user){
      const selector = newProps.user.id === CurrentUserStore.get().id;
      ClientActions.getTimeline(newProps.user.id, selector);
    }
  },

  _onChange(){
    this.setState({posts: PostStore.all()});
  },

  componentWillUnmount(){
    this.listener.remove();
  },

  render(){
    const index = this.state.posts.map( (post) => {
      return <TimelineIndexItem key={post.id} post={post} />;
    });
    return(
      <div className="timeline-index">
        {index}
      </div>
    );
  }
});

module.exports = TimelineIndex;
