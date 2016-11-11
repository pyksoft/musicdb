Artistphoto.delete_all
Genre.delete_all
Artist.delete_all

# Genre
pop = Genre.create(name:"Pop")
rock = Genre.create(name:"Rock")
r_n_b = Genre.create(name:"R&B")
reggae = Genre.create(name:"Reggae")

# Artistphotos
artistphoto01 = Artistphoto.create({remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1478867617/backstreet01_edxioa.jpg"})
artistphoto02 = Artistphoto.create({remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1477088558/aetr0ybpgdut4qof3oci.jpg"})
artistphoto03 = Artistphoto.create({remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1478867647/beatles_vxfgp1.jpg"})

# Artists
artist01 = Artist.create( { name: "Backstreet Boys", bio: "Backstreet Boys bio", genres: [pop, r_n_b], artistphotos: [artistphoto01] } )
artist02 = Artist.create( { name: "Rihanna", bio: "Rihanna bio", genres: [pop, r_n_b, reggae], artistphotos: [artistphoto02] } )
artist03 = Artist.create( { name: "The Beatles", bio: "The Beatles bio", genres: [pop, rock], artistphotos: [artistphoto03] } )
