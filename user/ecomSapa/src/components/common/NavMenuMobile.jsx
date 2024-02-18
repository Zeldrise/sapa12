import React, { Component, Fragment } from "react";
import { Navbar, Container, Row, Col, Button } from "react-bootstrap";
import Logo from "../../assets/images/weblogo.svg";
import { Link, Redirect } from "react-router-dom";
import MegaMenuMobile from "../home/MegaMenuMobile";
import axios from "axios";
import AppURL from "../../api/AppURL";

class NavMenuMobile extends Component {
  constructor() {
    super();
    this.state = {
      SideNavState: "sideNavClose",
      ContentOverState: "ContentOverlayClose",
      SearchKey: "",
      SearchRedirectStatus: false,
      cartCount: 0,
    };
    this.SearchOnChange = this.SearchOnChange.bind(this);
    this.SearchOnClick = this.SearchOnClick.bind(this);
    this.SearchRedirect = this.SearchRedirect.bind(this);
  }
  componentDidMount() {
    let product_code = this.props.product_code;
    axios.get(AppURL.CartCount(product_code)).then((response) => {
      this.setState({ cartCount: response.data });
    });
  }
  logout = () => {
    localStorage.clear();
  };
  SearchOnChange(event) {
    let SearchKey = event.target.value;
    // alert(SearchKey);
    this.setState({ SearchKey: SearchKey });
  }
  SearchOnClick() {
    if (this.state.SearchKey.length >= 2) {
      this.setState({ SearchRedirectStatus: true });
    }
  }
  SearchRedirect() {
    if (this.state.SearchRedirectStatus === true) {
      return <Redirect to={"/productbysearch/" + this.state.SearchKey} />;
    }
  }
  MenuBarClickHandler = () => {
    this.SideNavOpenClose();
  };
  ContentOverlayClickHandler = () => {
    this.SideNavOpenClose();
  };
  SideNavOpenClose = () => {
    let SideNavState = this.state.SideNavState;
    let ContentOverState = this.state.ContentOverState;
    if (SideNavState === "sideNavOpen") {
      this.setState({
        SideNavState: "sideNavClose",
        ContentOverState: "ContentOverlayClose",
      });
    } else {
      this.setState({
        SideNavState: "sideNavOpen",
        ContentOverState: "ContentOverlayOpen",
      });
    }
  };

  render() {
     let buttons;
     if (localStorage.getItem("token")) {
       buttons = (
         <div>
           <Link to="/favourite" className="btn">
             <i className="fa h4 fa-heart"></i>
             <sup>
               <span className="badge text-white bg-danger"></span>
             </sup>
           </Link>
           <Link to="/notification" className="btn">
             <i className="fa h4 fa-bell"></i>
             <sup>
               <span className="badge text-white bg-danger"></span>
             </sup>
           </Link>
           <Link to="/profile" className="h4 btn">
             PROFILE
           </Link>
           <Link to="/" onClick={this.logout} className="h4 btn">
             LOGOUT
           </Link>
           <Link to="/cart" className="cart-btn">
             <i className="fa fa-shopping-cart"></i> Cart
           </Link>
         </div>
       );
     } else {
       buttons = (
         <div>
           <Link to="/favourite" className="btn">
             <i className="fa h4 fa-heart"></i>
             <sup>
               <span className="badge text-white bg-danger"></span>
             </sup>
           </Link>
           <Link to="/notification" className="btn">
             <i className="fa h4 fa-bell"></i>
             <sup>
               <span className="badge text-white bg-danger"></span>
             </sup>
           </Link>
           <Link to="/login" className="h4 btn">
             LOGIN
           </Link>
           <Link to="/register" className="h4 btn">
             REGISTER
           </Link>
           <Link to="/cart" className="cart-btn">
             <i className="fa fa-shopping-cart"></i> Cart
           </Link>
         </div>
       );
     }
    return (
      <Fragment>
        <div className="TopSectionDown">
          <Navbar fixed="top" className="navbar" bg="light">
            <Container
              fluid={"true"}
              className="fixed-top shadow-sm p-2 mb-0 bg-white"
            >
              <Row>
                <Col lg={4} md={4} sm={6} xs={6}>
                  <Button
                    onClick={this.MenuBarClickHandler}
                    className="btn btn-bars"
                  >
                    <i className="fa fa-bars"></i>
                  </Button>
                  <Link to="/">
                    <img className="nav-logo" src={Logo} />
                  </Link>
                </Col>

                <Col className="p-1 mt-1" lg={4} md={4} sm={6} xs={6}>
                  <div className="input-group w-100">
                    <input
                      onChange={this.SearchOnChange}
                      type="text"
                      className="form-control"
                    />
                    <Button
                      onClick={this.SearchOnClick}
                      type="button"
                      className="btn site-btn"
                    >
                      <i className="fa fa-search"></i>
                    </Button>
                  </div>
                </Col>

                <Col className="p-1 mt-1" lg={4} md={4} sm={12} xs={12}>
                  {buttons}
                </Col>
              </Row>
              {this.SearchRedirect()}
            </Container>
          </Navbar>
        </div>
        <div className={this.state.SideNavState}>
          <MegaMenuMobile />
        </div>
        <div
          onClick={this.ContentOverlayClickHandler}
          className={this.state.ContentOverState}
        ></div>
      </Fragment>
    );
  }
}

export default NavMenuMobile;
