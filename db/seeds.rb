Artistphoto.delete_all
Genre.delete_all
Artist.delete_all

# Genre
pop = Genre.create(name:"Pop")
rock = Genre.create(name:"Rock")
r_n_b = Genre.create(name:"R&B")
reggae = Genre.create(name:"Reggae")
disco = Genre.create(name:"Disco")
blues = Genre.create(name:"Blues")
folk = Genre.create(name:"Folk")
country = Genre.create(name:"Country")

# Artistphotos
artistphoto01 = Artistphoto.create({remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1478867617/backstreet01_edxioa.jpg"})
artistphoto02 = Artistphoto.create({remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1477088558/aetr0ybpgdut4qof3oci.jpg"})
artistphoto03 = Artistphoto.create({remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1478867647/beatles_vxfgp1.jpg"})
artistphoto04 = Artistphoto.create({remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1478940237/michael_sg8cep.jpg"})
artistphoto05 = Artistphoto.create({remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1478940238/beyonce_xfywzf.jpg"})
artistphoto06 = Artistphoto.create({remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1478940238/queen_fpcbdv.jpg"})
artistphoto07 = Artistphoto.create({remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1478940238/rolling-stones_fdpapp.jpg"})
artistphoto08 = Artistphoto.create({remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1478940409/leonard-cohen_mellpx.jpg"})
artistphoto09 = Artistphoto.create({remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1478940237/bob_dulan_lbhh4y.jpg"})

# Artists
artist01 = Artist.create( { name: "Backstreet Boys", bio: "And Imma call you back. Maybe I'm a drifter. You keep me drowning in your love. I can't imagine. Now let me show you the shape of my heart. I've been a rebel too long. Hold me now don't bother if every minute it makes me weaker. (1409607566242). Don't pretend you're sorry. I wanna know love but I'm a little scared. A rebel too long, a rebel too long. If ever I make, made a mistake. Make me dance. She amazes me. I know you're not", genres: [pop, r_n_b], artistphotos: [artistphoto01] } )
artist02 = Artist.create( { name: "Rihanna", bio: "I'm wondering, wondering. Jump, jump, jump, jump, jump, jump, jump, jump. And I can't feel my body now. A lost connection, oh, come back to me. Tell me that you love me. Don't be the reason. That's the way. Night, night, for a night, for a. It's pulling me apart, this time. Now baby I won't complain. Best believe we gone forever. I bet they be wondering why you always call my name. You're so afraid to cry. Don't you let it go. And don't care (don't care)", genres: [pop, r_n_b, reggae], artistphotos: [artistphoto02] } )
artist03 = Artist.create( { name: "The Beatles", bio: "(I never needed) I never needed anybody's help in any way. Help, I need somebody. Help me if you can, I'm feeling down. All the lonely people. Ah, look at all the lonely people. Lives in a dream. Ah, look at all the lonely people. I give her all my love. Très bien ensemble.. Who is it for?. (I know I've found) Now I find I've changed my mind and opened up the doors. You'd love her too. (1409607566242). Help, not just anybody. Michelle, my belle.", genres: [pop, rock], artistphotos: [artistphoto03] } )
artist04 = Artist.create( { name: "Michael Jackson", bio: "Come on girl!. She's a slave to the rhythm. Miscellaneous. I am the thing that you need. My life will never be the same. Think I'd find. (All my life). Sunny days seem far away. Oh, I'll be workin' from nine to five. Until he falls asleep. She dances in the streets at nights. Keep doing what you do. You know you did. She dances at the crack of dawn. like I've never, forever known!", genres: [pop, rock, disco], artistphotos: [artistphoto04] } )
artist05 = Artist.create( { name: "Beyoncé", bio: "Come harder this wont be easy. That's all i got in the end. You need a real woman in your life. I'm gonna be my own best friend. She was from your past. (1409607566242). Believe me. Oh I'm jealous. I was here.... Ladies thats a good look. So you could feel this feeling. This ain't a shoulder with a chip or an ego. We can't let our good love die. I will leave my mark so everyone will know. How you gon' upgrade me", genres: [r_n_b, pop], artistphotos: [artistphoto05] } )
artist06 = Artist.create( { name: "Queen", bio: "Steve walks warily down the street. She's a Killer Queen. My only friend through teenage nights. Is this a kind of magic? (it's a kind of magic). (Oh,) let's go. She keeps Moët et Chandon. Recommended at the price. Caviar and cigarettes. Hold the line!. Machine guns ready to go. Ain't no sound but the sound of his feet. You can't decline. I heard it on my radio. The day will dawn of sanity. You had your time, you had the power", genres: [pop, rock], artistphotos: [artistphoto06] } )
artist07 = Artist.create( { name: "Rolling Stones", bio: "Button your coat. Thank you for your wine, California,. I walk the streets of love and they're full of tears. This coming and going. No colours anymore, I want them to turn black. Stay on the path. While lovers laugh and music plays. A couple watch me from a bar", genres: [blues, rock], artistphotos: [artistphoto07] } )
artist08 = Artist.create( { name: "Leonard Cohen", bio: "Now the swan it floated on the English river. I even heard you say. I tidied up the kitchenette, I tuned the old banjo. I've seen you change the water into wine. I? m wanted at the traffic-jam, they? re saving me a seat. I never thought we? d meet. I've seen you change it back to water, too. I told my mother, Mother, I must leave you. (1409607566242). You kiss my lips and then it? s done. I try but I just don't get by with you. The ending got so ugly. You never ever loved me. It was half my fault and half the atmosphere", genres: [folk, rock], artistphotos: [artistphoto08] } )
artist09 = Artist.create( { name: "Bob Dylan", bio: "Oh, me and my cousin, one Arthur McBride,. She sewed my new blue jeans.. the Sergeant he cried.. Alberta what's on your mind. I saw them all. Why do I sigh. My sweetheart was a gambler,. Now the only thing a gambler needs. Why don't I try to forget. How many roads must a man walk down. I'll give you more gold. In the finest of clothing he's constantly seen.. And the same to you, gentlemen, we did reply.", genres: [blues, rock, country, folk], artistphotos: [artistphoto09] } )

artists = [artist01, artist02, artist03, artist04, artist05, artist06, artist07, artist08, artist09]

200.times do
     Song.create(name: Faker::Pokemon.name, artist: artists.sample)
    end
