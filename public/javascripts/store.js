var Store = (function() {
	var Store = Class.create({

		initialize: function() {

			Event.addBehavior({

				'#filter_submit': function() {
					this.hide();
				},
				
				'select#category:change': function() {
					this.form.submit();
				}

			});

		}

	});

	return Store;
})();