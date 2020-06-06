User.destroy_all
BucketList.destroy_all
Entry.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'users'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'bucket_lists'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'entries'")

User.create!(first_name: "Queen", last_name: "Abdu", user_name: "ABBH", email: "aa@email.com")
p "#{User.all.count} User's created"

BucketList.create!(title: "One Day", user_id: User.first.id)
p "#{BucketList.all.count} Bucket List's created"

10.times {
  Entry.create!(
    title: Faker::Space.planet, 
    body: Faker::Hipster.sentences(number: 2), 
    bucket_list_id: User.first.bucket_list.id
  )
}
p "#{Entry.all.count} Entries created"


buckList controller

get '/bucketlist/:id'
  @bucket_list = current_user.bucket_list
  @entries = current_user.bucket_list.entries
end