import React from 'react'
import UsersContainer from './UsersContainer'
import FormContainer from './FormContainer'
import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap/dist/css/bootstrap-theme.css';
import update from 'react-addons-update'

class MainContainer extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      users: []
    }
  }

  componentDidMount() {
  const axios = require('axios');
    axios.get('http://localhost:3001/users')
    .then((results) => {
      console.log(results)
      this.setState({users: results.data})
    })
    .catch((data) => {
      console.log(data)
    })
  }

  createUser = (username, mail, password) => {
  const axios = require('axios');
    axios.post('http://localhost:3001/users',{u_mail: mail, u_name: username, u_password: password, u_icon: 'default', u_month_bc: 0, u_total_bc: 0} )
    .then((response) => {
      const newData = update(this.state.users, {$push:[response.data]})
      this.setState({users: newData})
    })
    .catch((data) =>{
      console.log(data)
    })
  }


  render() {
    return (
      <div className='app-main'>
        <FormContainer createUser={this.createUser}/>
        <UsersContainer userData={ this.state.users} />
      </div>
    );
  }
}

export default MainContainer