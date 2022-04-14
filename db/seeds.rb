# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'contact@aleks.co', :password => 'chicken', :admin => true
puts "#{ User.count } users"

Comment.destroy_all
c1 = Comment.create :title => 'Good essay!'
puts "#{ Comment.count } comments"

Material.destroy_all
m1 = Material.create :title => 'How to cope with an existential crisis', :author => 'Skye C Cleary', :link => 'https://psyche.co/guides/how-kierkegaard-can-help-you-cope-with-an-existential-crisis'
m2 = Material.create :title => 'What is Philosophy?', :author => 'Graham Priest', :link => 'https://www.dropbox.com/s/27s04cako1nyayk/Week%206%20Reading%2C%20Beginners%20Philosophy%20with%20Aleks.pdf?dl=0'
m3 = Material.create :title => 'The Power Thinker', :author => 'Colin Koopman', :link => 'https://aeon.co/essays/why-foucaults-work-on-power-is-more-important-than-ever'
m4 = Material.create :title => 'Gender Trouble', :author => 'Judith Butler', :link => 'https://www.dropbox.com/s/uhobz3lkgndobgq/Reading%20Week%204%2C%20BGWA%20Part%201%20September.pdf?dl=0'
m5 = Material.create :title => 'Orientalism', :author => 'Edward Said', :link => 'https://www.dropbox.com/s/gr6rk9jpzvexknc/Week%205%20Reading%2C%20Beginners%20Philosophy%20with%20Aleks.pdf?dl=0'
m6 = Material.create :title => 'The Experience Machine', :author => 'Robert Nozick', :link => 'https://www.dropbox.com/s/gwgpr61hxe30tqo/Week%202%20Reading%2C%20The%20Experience%20Machine.pdf?dl=0'
m7 = Material.create :title => 'In Praise of Idleness', :author => 'Bertrand Russell', :link => 'https://files.libcom.org/files/Bertrand%20Russell%20-%20In%20Praise%20of%20Idleness.pdf'
m8 = Material.create :title => 'Famine, Affluence, and Morality', :author => 'Peter Singer', :link => 'https://www.dropbox.com/s/l7i4fhu5f9xp57h/Famine%2C%20Affluence%2C%20Morality.pdf?dl=0'
m9 = Material.create :title => 'What Is It Like to Be a Bat?', :author => 'Thoas Nagel', :link => 'https://warwick.ac.uk/fac/cross_fac/iatl/study/ugmodules/humananimalstudies/lectures/32/nagel_bat.pdf'
m10 = Material.create :title => 'Is Free Will an Illusion', :author => 'Oliver Burkeman', :link => 'https://www.theguardian.com/news/2021/apr/27/the-clockwork-universe-is-free-will-an-illusion'
m11 = Material.create :title => 'An Essay on Grief', :author => 'Beri Marusic', :link => 'https://www.dropbox.com/s/3d3za6m46lj9ea0/do-reasons-expire-an-essay-on-grief-2.pdf?dl=0'


puts "#{ Material.count } materials"

Philosopher.destroy_all
p1 = Philosopher.create :title => 'Martin Heidegger'
p2 = Philosopher.create :title => 'Ludwig Wittgenstein'
p3 = Philosopher.create :title => 'Michel Foucault'
p4 = Philosopher.create :title => 'Judith Butler'
p5 = Philosopher.create :title => 'Edward Said'
p6 = Philosopher.create :title => 'Robert Nozick'
p7 = Philosopher.create :title => 'Bertrand Russell'
p8 = Philosopher.create :title => 'Peter Singer'
p9 = Philosopher.create :title => 'Thomas Nagel'
p10 = Philosopher.create :title => 'Sam Harris'
p11 = Philosopher.create :title => 'Beri Marusic'
puts "#{ Philosopher.count } philosophers"

School.destroy_all
s1 = School.create :title => 'Analytic Philsophy'
puts "#{ School.count } schools"

Topic.destroy_all
t1 = Topic.create :title => 'Existentialism'
t2 = Topic.create :title => 'Language and Meaning'
t3 = Topic.create :title => 'Power and Knowledge'
t4 = Topic.create :title => 'Feminism'
t5 = Topic.create :title => 'Post-colonial theory'
t6 = Topic.create :title => 'Ethics'
t7 = Topic.create :title => 'Work and Value'
t8 = Topic.create :title => 'Virtue and Capitalism'
t9 = Topic.create :title => 'Consciousness'
t10 = Topic.create :title => 'Responsibility'
t11 = Topic.create :title => 'Emotion'
puts "#{ Topic.count } topics"

puts "Philosophers and materials"
p1.materials << m1
p2.materials << m2
p3.materials << m3
p4.materials << m4
p5.materials << m5
p6.materials << m6
p7.materials << m7
p8.materials << m8
p9.materials << m9
p10.materials << m10
p11.materials << m11

puts "Philosophers and topics"
p1.topics << t1
p2.topics << t2
p3.topics << t3
p4.topics << t4
p5.topics << t5
p6.topics << t6
p7.topics << t7
p8.topics << t8
p9.topics << t9
p10.topics << t10
p11.topics << t11

puts "Philosophers and schools"
p1.schools << s1
p2.schools << s1

puts "Topics and materials"
t1.materials << m1 
t2.materials << m2 
t3.materials << m3
t4.materials << m4 
t5.materials << m5 
t6.materials << m6 
t7.materials << m7 
t8.materials << m8 
t9.materials << m9 
t10.materials << m10 
t11.materials << m11








