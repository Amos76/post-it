# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


posts = Post.create(
		[#beginning of the Array
			{#beginning of the first Hash
				title: "How to use active record",
				body: "by defining a model called Post, we have both a table called posts and an ActiveRecord class available for inputting and retrieving values to and from the DB"
			},

			{#beginning of the second Hash
				title: "How to use DB seeds",
				body: "Use ActiveRecord in the db/seeds file and run rake db:seed to populate the rows in the corresponding table with the data described in the seeds file."
			}
		]
	)