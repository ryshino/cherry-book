text = <<-TEXT
type=zip; filename=users.zip; size=1024;
type=xml; filename=posts.xml; size=2048;
TEXT
p text.scan(/(?<=filename=)[^;]+/)
# => ["users.zip", "posts.xml"]
