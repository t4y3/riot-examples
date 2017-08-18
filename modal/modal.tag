<modal>
  <yield></yield>

  <div class="close-btn-wrap" onclick="{ closeModal }">
    <close-btn></close-btn>
  </div>

  <style scoped>
    :scope {
      display: block;
      width: 100%;
      height: 100%;
      padding: 5%;
      position: fixed;
      top: 0;
      left: 0;
      background-color: rgba(0, 0, 0, .5);
      box-sizing: border-box;
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

</modal>