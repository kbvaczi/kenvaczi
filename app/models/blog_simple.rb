class BlogSimple
  include ActiveModel::Validations

  validates :identifier, :creation_date, presence: true

  validate :must_have_valid_creation_date
                    
  # to deal with form, you must have an id attribute
  attr_accessor :id, :identifier, :creation_date

  def title
    self.identifier.gsub("_", " ").split(" ").map(&:capitalize).join(" ")
  end

  def partial_view
    "#{BlogSimple.partial_directory}post_#{creation_date.strftime('%Y_%m_%d')}_#{identifier}"
  end

  def image_link(filename)
    # images for each blog should be stored in app/assets/images/IDENTIFIER/FILENAME.jpg, etc...
    "blog/#{identifier}/#{filename}"
  end
  
  def self.all
    blogs = []
    list_of_blog_partial_filenames_with_path = Dir.glob("#{BlogSimple.blog_posts_directory}*.html.erb")
    list_of_blog_partial_filenames_with_path.each do |f|
      # files stored in _YYYY_MM_DD_TITLE_TITLE2_TITLE3.html.erb naming format
      blog_identifier = f.split("_")[5..-1].join("_").split(".")[0] rescue nil
      blog_creation_date = Date.parse(f.split("_")[2..4].join("-")) rescue nil
      blog = BlogSimple.new(identifier: blog_identifier, creation_date: blog_creation_date)
      blogs << blog if blog.valid?
    end
    blogs.sort {|a,b| b.creation_date <=> a.creation_date} #show in reverse chronological order
  end

  def self.find(identifier)
    blogs = BlogSimple.all
    blog = nil
    blogs.each do |b|
      if b.identifier == identifier
        blog = b
        break
      end
    end
    (blog.present? and blog.valid?) ? blog : nil
  end

  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
    @attributes = attributes
  end

  def read_attribute_for_validation(key)
    @attributes[key]
  end

  def to_key; end

  def to_param
    self.identifier
  end

  private

  def self.partial_directory
    "blog/posts/"
  end

  def self.blog_posts_directory
    "app/views/#{partial_directory}"
  end

  def must_have_valid_creation_date
    if creation_date.present?
      unless creation_date.is_a?(Date)
        errors.add(:creation_date, "must be a valid date")
      end
    end
  end

end