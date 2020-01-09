import React from 'react'
import ViewUser from './ViewUser'

class UsersContainer extends React.Component {
  render() {
    return(
      <div className='UserList'>
         {this.props.userData.map((data) => {
           return(
               <ViewUser data={ data } key={ data.id } />
           )
         })}
      </div>
    )
  }
}

export default UsersContainer