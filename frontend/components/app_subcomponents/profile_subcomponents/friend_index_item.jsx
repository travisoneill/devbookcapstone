const React = require('react');
const Transform = require('../../../constants/transformations');
const FriendButton = require('../../util/add_friend');
const CurrentUserStore = require('../../../stores/current_user_store');
const SelectedUserStore = require('../../../stores/selected_user_store');
const Link = require('react-router').Link;

//each element on the 'friends tab'
const FriendIndexItem = React.createClass({
  render(){
    let url = this.props.friend.profile_pic_url;
    if(this.props.request === true){
      url = Transform.friendWallBW(url); //photo styling for incoming requests
    } else {
      url = Transform.friendWall(url); //photo styling for friends
    }
    const name = this.props.friend.full_name;
    const current = CurrentUserStore.get();
    let button = <div />;
    //displays add friend button 'components/util/add_friend' only if own profile
    if(current.id === SelectedUserStore.get().id){
      button = <FriendButton current={current} selected={this.props.friend} location={"friend-index"} />;
    }
    return(
      <div className="friend-container">
        <Link to={`timeline/${this.props.friend.id}`}>
          <div className="friend-overlay-div">
            <p className="friend-overlay">{name}</p>
            {button}
          </div>
          <img className="friend-wall-item" src={url} />
        </Link>
      </div>
    );
  }
});

module.exports = FriendIndexItem;
