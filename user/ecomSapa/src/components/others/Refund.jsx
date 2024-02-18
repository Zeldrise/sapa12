import React, { Component, Fragment } from 'react'
import { Col, Container, Row } from "react-bootstrap";
import AppURL from "../../api/AppURL";
import axios from "axios";
import parse from "html-react-parser";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import { Link } from "react-router-dom";
import Breadcrumb from "react-bootstrap/Breadcrumb";



class Refund extends Component {
  constructor() {
    super();
    this.state = {
      refund: "",
      loaderDiv: "",
      mainDiv: "d-none",
    };
  }
  componentDidMount() {
    let SiteInfoRefund = sessionStorage.getItem("AllSiteInfo");
    if (SiteInfoRefund == null) {
      axios
        .get(AppURL.AllSiteInfo)
        .then((response) => {
          let StatusCode = response.status;
          if (StatusCode == 200) {
            let JsonData = response.data[0]["refund"];
            this.setState({
              refund: JsonData,
              loaderDiv: "d-none",
              mainDiv: "",
            });
            sessionStorage.setItem("SiteInfoRefund", JsonData);
          } else {
            toast.error("Something Went Wrong");
          }
        })
        .catch((error) => {
          toast.error("Something Went Wrong");
        });
    } else {
      this.setState({ purchase: SiteInfoRefund });
    }
  }
  render() {
    return (
      <Fragment>
        <Container>
          <div className="breadbody">
            <Breadcrumb>
              <Breadcrumb.Item>
                <Link to="/">Home</Link>
              </Breadcrumb.Item>
              <Breadcrumb.Item>
                <Link to="/refund">Refund</Link>
              </Breadcrumb.Item>
            </Breadcrumb>
          </div>
          <Row className="p-2">
            <Col
              className="shadow-sm  bg-white mt-2"
              md={12}
              lg={12}
              sm={12}
              xs={12}
            >
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
                <h4 className="section-title-login">
                  SaPa 12 Shop Refund Policy
                </h4>

                <p className="section-title-contact">
                  {parse(this.state.refund)}
                </p>
              </div>
            </Col>
          </Row>
        </Container>
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

export default Refund