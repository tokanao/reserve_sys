// FIXME: to coffee script
import Vue from 'vue/dist/vue.esm';
import VueSuperagent from 'vue-superagent';

Vue.use(VueSuperagent);

vm = new Vue({
  el: '.form-inputs',
  data: {
    amount: gon.amount,
    details: gon.entry_details,
    details_destroy_ids: []

  },
  computed: {
    // charge: function() {
    //   var _this = this;
    //   return function(i) {
    //     var detail = _this.details[i];
    //     detail.charge = (detail.price * detail.count) || 0;
    //     return detail.charge;
    //   }
    // },
  },
  methods: {
    changeCourse: function(i) {
      this.calcCharge(i);

      // NOTE: use data-* instead of ajax
      // var detail = this.details[i];
      // var course_id = detail.course_id
      // this.$http.get('/api/courses/' + course_id)
      //   .then(res => {
      //     if (res.ok) {
      //       var course = res.body;
      //       var price = course['price'];
      //       // detail.price = price;
      //       this.calcCharge(i);
      //     }
      //   });
    },
    changeCount: function(i) {
      this.calcCharge(i);
    },
    addRow: function() {
    	this.details.push({ 'price': 0, 'count': 1 });
    },
    delRow: function(detail, i) {
      detail.hasOwnProperty('id') ? this.details_destroy_ids.push(this.details.splice(i, 1)[0].id) : this.details.splice(i, 1)
      this.calcTotal();
    },
    // コース金額計算
    calcCharge: function(i) {
      var price = this.$refs.prices[0][i].getAttribute("data-price");
      var detail = this.details[i];
      detail.charge = price * detail.count;

      this.calcTotal();
    },
    // 合計計算
    calcTotal: function() {
      this.amount = 0;
      var _this = this;
      _this.details.forEach(function(val, idx, ary){
        var price = _this.$refs.prices[0][idx].getAttribute("data-price");
        _this.amount += price * val.count;
      });
    }
  }
});
