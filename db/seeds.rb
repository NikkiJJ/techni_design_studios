Admin.create!(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password'
) unless Admin.exists?(email: 'admin@example.com')

5.times do |i|
  Post.create!(
    title: "Sample Post #{i + 1}",
    content: "This is the content for sample post number #{i + 1}. It contains some text to demonstrate the post content.",
  )
end
