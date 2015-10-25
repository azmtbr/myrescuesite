Refinery::Page.class_eval do

  belongs_to :background_image, :class_name => '::Refinery::Image'

  def self.footer_menu_pages
    where show_in_footer: true
  end
end
