import React from 'react'
import {Button,FormGroup,FormControl} from 'react-bootstrap'

class FormContainer extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      username: '',
      mail: '',
      password: ''
    }
  }

  onChangename(u) {
    this.setState({username: u.target.value})
  }

  onChangemail(m) {
    this.setState({mail: m.target.value})
  }

  onChangepassword(p) {
    this.setState({password: p.target.value})
  }

  hundleSubmit = () => {
    this.props.createUser(this.state.username, this.state.mail, this.state.password)
    this.setState({
      username: '',
      mail: '',
      password: ''
    })
  }

  render(){
    return(
      <div>
      <form>
        <FormGroup controlId="formBasicText">
          <FormControl
            type="text"
            value={this.state.username}
            placeholder="User name"
            onChange={ u => this.onChangename(u)}
          />
        </FormGroup>

      </form>

      <form>
        <FormGroup controlId="formBasicText">
          <FormControl
            type="text"
            value={this.state.mail}
            placeholder="Your mail"
            onChange={ m => this.onChangemail(m)}
          />
        </FormGroup>

      </form>

      <form>
        <FormGroup controlId="formBasicText">
          <FormControl
            type="text"
            value={this.state.password}
            placeholder="password"
            onChange={ p => this.onChangepassword(p)}
          />
        </FormGroup>

      </form>

      <Button type="submit" onClick={this.hundleSubmit}>登録</Button>
      </div>
    )
  }
}

export default FormContainer