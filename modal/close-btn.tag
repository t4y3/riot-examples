<close-btn>

  <style scoped>
    /* 円 */
    :scope {
      display: block;
      font-size: 30px;
      position: relative;
      width: 1.4em;
      height: 1.4em;
      border: 0.1em solid #fff;
      border-radius: 100%;
      cursor: pointer;
    }
    /* 左 */
    :scope::before {
      content: "";
      position: absolute;
      top: 0.2em;
      left: 0.6em;
      width: 0.2em;
      height: 1em;
      background-color: #fff;
      transform: rotate(45deg);
    }
    /* 右 */
    :scope::after {
      content: "";
      position: absolute;
      top: 0.6em;
      left: 0.2em;
      width: 1em;
      height: 0.2em;
      background-color: #fff;
      transform: rotate(225deg);
    }
  </style>

  <script>
  </script>

</close-btn>