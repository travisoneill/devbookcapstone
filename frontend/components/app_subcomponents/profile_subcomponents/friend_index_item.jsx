const React = require('react');
const Transform = require('../../../constants/transformations');
const FriendButton = require('../../util/add_friend');
const CurrentUserStore = require('../../../stores/current_user_store');
const SelectedUserStore = require('../../../stores/selected_user_store');

const FriendIndexItem = React.createClass({
  render(){
    let url = this.props.friend.profile_pic_url;
    if(this.props.request === true){
      url = Transform.friendWallBW(url);
    } else {
      url = Transform.friendWall(url);
    }
    const name = this.props.friend.full_name;
    const current = CurrentUserStore.get();
    let button = <div />;
    if(current === SelectedUserStore.get()){
      button = <FriendButton current={current} selected={this.props.friend} location={"friend-index"} />;
    }
    return(
      <div className="friend-container">
        <div className="friend-overlay-div">
          <p className="friend-overlay">{name}</p>
          {button}
        </div>
        <img className="friend-wall-item" src={url} />
      </div>
    );
  }
});

module.exports = FriendIndexItem;
