puts 'Seeding development database...'

dean = User.first_or_create!(email: 'dean@example.com',
  password: '12345678',
  password_confirmation: '12345678',
  first_name: 'Dean',
  last_name: 'DeHart',
  role: User.roles[:admin])

john = User.first_or_create!(email: 'john@doe.com',
  password: '12345678',
  password_confirmation: '12345678',
  first_name: 'John',
  last_name: 'Doe')

category = Category.first_or_create!(name: "Uncategorized", display_in_nav: true)  
Category.first_or_create!(name: "Cars", display_in_nav: false)
Category.first_or_create!(name: "Bikes", display_in_nav: true)
Category.first_or_create!(name: "Boats", display_in_nav: true)  

Address.first_or_create!(street: '123 Main St', city: 'Anytown', state: 'CA', zip: '12345', country: 'USA', user: dean)
Address.first_or_create(street: '123 Main St', city: 'Anytown', state: 'CA', zip: '12345', country: 'USA', user: john)

elapsed = Benchmark.measure do
  posts = []
  10.times do |x|
    puts "Creating post #{x}"
    post = Post.new(title: "Title #{x}",
                    body: "Body #{x} Words go here Idk",
                    user: dean,
                    category: category)

    5.times do |y|
      puts "Creating comment #{y} for post #{x}"
      post.comments.build(body: "Comment #{y}",
                          user: john)
    end
    posts.push(post)
  end
  Post.import(posts, recursive: true)
end

puts "Seeded development DB in #{elapsed.real} seconds"