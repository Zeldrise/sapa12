import React, { Component } from 'react'
import { Container } from "react-bootstrap";

class CategoryLoading extends Component {
  render() {
    let isLoading = this.props.isLoading;
    return (
      <div className={isLoading}>
        <Container className="text-center">
          <div className="section-title text-center mb-55">
            <h2>CATEGORY</h2>
          </div>

          <div className="row">
            <div className="col-lg-3 col-md-3 col-sm-6 col-6 p-0 mx-auto">
              <a href="" className="card image-box h-100 w-100">
                <div class="ph-picture"></div>
                <div className="ph-item">
                  <div className="ph-col-12">
                    <div className="ph-row">
                      <div className="ph-col-4 empty" />
                      <div className="ph-col-4 small" />
                      <div className="ph-col-4 empty" />
                    </div>
                  </div>
                </div>
              </a>
            </div>
            <div className="col-lg-3 col-md-3 col-sm-6 col-6 p-0 mx-auto">
              <a href="" className="card image-box h-100 w-100">
                <div class="ph-picture"></div>
                <div className="ph-item">
                  <div className="ph-col-12">
                    <div className="ph-row">
                      <div className="ph-col-4 empty" />
                      <div className="ph-col-4 small" />
                      <div className="ph-col-4 empty" />
                    </div>
                  </div>
                </div>
              </a>
            </div>
            <div className="col-lg-3 col-md-3 col-sm-6 col-6 p-0 mx-auto">
              <a href="" className="card image-box h-100 w-100">
                <div class="ph-picture"></div>
                <div className="ph-item">
                  <div className="ph-col-12">
                    <div className="ph-row">
                      <div className="ph-col-4 empty" />
                      <div className="ph-col-4 small" />
                      <div className="ph-col-4 empty" />
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
        </Container>
      </div>
    );
  }
}

export default CategoryLoading