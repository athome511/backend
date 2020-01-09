import React from 'react'

class ViewUser extends React.Component {

  render() {
    return(
      <div>
        id:<span>{ this.props.data.id }</span>&nbsp;
        name:<span>{ this.props.data.u_name }</span>&nbsp;
	mail:<span>{ this.props.data.u_mail }</span>&nbsp;
	password:<span>{ this.props.data.u_password }</span>&nbsp;
	icon:<span>{ this.props.data.u_icon }</span>&nbsp;
	monthBC:<span>{ this.props.data.u_month_bc }</span>&nbsp;
	totalBC:<span>{ this.props.data.u_total_bc }</span>&nbsp;
      </div>
    )
  }
}

export default ViewUser