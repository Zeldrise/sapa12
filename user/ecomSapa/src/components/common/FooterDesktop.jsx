import React, { Component, Fragment } from "react";
import { Col, Container, Row } from "react-bootstrap";
import { Link } from "react-router-dom";
import Apple from "../../assets/images/apple.png";
import Google from "../../assets/images/google.png";
import AppURL from "../../api/AppURL";
import axios from "axios";
import parse from "html-react-parser";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";  

export class FooterDesktop extends Component {
  constructor() {
    super();
    this.state = {
      address: "",
      android_app_link: "",
      ios_app_link: "",
      facebook_link: "",
      twitter_link: "",
      instagram_link: "",
      youtube_link: "",
      copyright_text: "",
      loaderDiv: "",
      mainDiv: "d-none",
    };
  }
  componentDidMount() {
    let SiteInfoAbout = sessionStorage.getItem("AllSiteInfo");
    if (SiteInfoAbout == null) {
      axios
        .get(AppURL.AllSiteInfo)
        .then((response) => {
          let StatusCode = response.status;
          if (StatusCode == 200) {
            let JsonData = response.data[0];
            this.setState({
              address: JsonData["address"],
              android_app_link: JsonData["android_app_link"],
              ios_app_link: JsonData["ios_app_link"],
              facebook_link: JsonData["facebook_link"],
              twitter_link: JsonData["twitter_link"],
              instagram_link: JsonData["instagram_link"],
              youtube_link: JsonData["youtube_link"],
              copyright_text: JsonData["copyright_text"],
              loaderDiv: "d-none",
              mainDiv: "",
            });
            sessionStorage.setItem("SiteInfoAbout", JsonData);
          } else {
            toast.error("Something Went Wrong");
          }
        })
        .catch((error) => {
          toast.error("Something Went Wrong");
        });
    } else {
      this.setState({ purchase: SiteInfoAbout });
    }
  }
  render() {
    return (
      <Fragment>
        <div className="footerback m-0 mt-5 pt-3 shadow-sm">
          <Container>
            <Row className="px-0 my-5">
              <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                <div className={this.state.loaderDiv}>
                  <div class="ph-item">
                    <div class="ph-col-12">
                      <div class="ph-row">
                        <div class="ph-col-4"></div>
                        <div class="ph-col-8 empty"></div>
                        <div class="ph-col-6"></div>
                        <div class="ph-col-6 empty"></div>
                        <div class="ph-col-12"></div>
                        <div class="ph-col-4"></div>
                        <div class="ph-col-8 empty"></div>
                        <div class="ph-col-6"></div>
                        <div class="ph-col-6 empty"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div className={this.state.mainDiv}>
                  <h5 className="footer-menu-title">OFFICE ADDRESS</h5>
                  {parse(this.state.address)}
                </div>
                <h5 className="footer-menu-title">SOCIAL LINK</h5>
                <a href={this.state.facebook_link} target="_blank">
                  <i className="fab m-1 h4 fa-facebook"></i>
                </a>
                <a href={this.state.instagram_link} target="_blank">
                  <i className="fab m-1 h4 fa-instagram"></i>
                </a>
                <a href={this.state.twitter_link} target="_blank">
                  <i className="fab m-1 h4 fa-twitter"></i>
                </a>
                <a href={this.state.youtube_link} target="_blank">
                  <i className="fab m-1 h4 fa-youtube"></i>
                </a>
              </Col>
              <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                <h5 className="footer-menu-title">THE COMPANY</h5>
                <Link to="/about" className="footer-link">
                  About Us
                </Link>
                <br></br>
                <Link to="/" className="footer-link">
                  Company Profile
                </Link>
                <br></br>
                <Link to="/contact" className="footer-link">
                  Contact Us
                </Link>
                <br></br>
              </Col>
              <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                <h5 className="footer-menu-title">MORE INFO</h5>
                <Link to="/purchase" className="footer-link">
                  How To Purchase
                </Link>
                <br></br>
                <Link to="/privacy" className="footer-link">
                  Privacy Policy
                </Link>
                <br></br>
                <Link to="/refund" className="footer-link">
                  Refund Policy
                </Link>
                <br></br>
              </Col>
              <Col className="p-2" lg={3} md={3} sm={6} xs={12}>
                <br></br>
                Change Your Language <br></br>
                <div id="google_translate_element"></div>
              </Col>
            </Row>
          </Container>
          <Container fluid={true} className="text-center m-0 pt-3 pb-1 fi">
            <Container>
              <Row>
                <h6 className="text-light">
                  {parse(this.state.copyright_text)}{" "}
                </h6>
              </Row>
            </Container>
          </Container>
        </div>
        <ToastContainer
          position="top-center"
          autoClose={5000}
          hideProgressBar={false}
          newestOnTop={false}
          closeOnClick
          rtl={false}
          pauseOnFocusLoss
          draggable
          pauseOnHover
          theme="light"
        />
      </Fragment>
    );
  }
}

export default FooterDesktop;
