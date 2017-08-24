<re-modal>
  <div class="re-modal-content">
    <div class="re-modal-header">
      <yield from="re-header"/>
    </div>
    <div class="re-modal-body">
      <yield from="re-body"/>
    </div>
    <div class="re-modal-btns">
      <p class="re-modal-btns__btn" onclick="{ closeModal }">いいよ</p>
      <p class="re-modal-btns__btn" onclick="{ closeModal }">やめる</p>
    </div>
  </div>

  <div class="close-btn-wrap" onclick="{ closeModal }">
    <re-close-btn></re-close-btn>
  </div>

  <style scoped>
    :scope {
      display: flex;
      align-items: center;
      justify-content: center;
      width: 100%;
      height: 100%;
      padding: 5%;
      position: fixed;
      top: 0;
      left: 0;
      background-color: rgba(0, 0, 0, .8);
      box-sizing: border-box;
    }

    .re-modal-content {
      width: 80%;
      max-width: 600px;
      background-color: #fff;
      border-radius: 4px;
      overflow: hidden;
    }

    .re-modal-header {
      padding: 20px;
      border-bottom: 1px solid #000;
    }

    .re-modal-body {
      padding: 20px;
    }

    .re-modal-btns {
      display: flex;
      align-items: center;
      justify-content: center;
      border-top: 1px solid #000;
    }

    .re-modal-btns .re-modal-btns__btn {
      flex: 1 1 50%;
      padding: 10px;
      text-align: center;
      cursor: pointer;
    }

    .re-modal-btns .re-modal-btns__btn:first-child {
      border-right: 1px solid #000;
    }

    .close-btn-wrap {
      position: absolute;
      top: 0;
      right: 0;
      margin: 5%;
    }
  </style>

  <script>
    this.closeModal = () => {
      this.unmount();
    };
  </script>

</re-modal>