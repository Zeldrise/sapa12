import React, { Component } from 'react'

class ProductDetailsLoading extends Component {
  render() {
    let isLoading = this.props.isLoading;
    return (
      <div className={isLoading}>
        <div className="row">
          <div className="col-1">
            <div class="ph-col-12 empty"></div>
          </div>
          <div className="col-5">
            <div class="ph-picture"></div>
            <div class="ph-picture"></div>
            <div class="ph-picture"></div>
          </div>
          <div className="col-6">
            <div class="ph-row">
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
              <div class="ph-col-10"></div>
              <div class="ph-col-2 empty"></div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default ProductDetailsLoading