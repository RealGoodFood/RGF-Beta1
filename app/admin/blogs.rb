ActiveAdmin.register Blog do
  controller.authorize_resource
 #custom form
form :html => { :multipart => true } do |f|
f.inputs "Blogs" do
 f.input :title
 f.input :body, :input_html => { :class => "ckeditor" }
end
 f.buttons
end  
#custom index
index do
  column :title
# column :action
column "Blogs" do |b|
      (b.body).html_safe
end
  default_actions
end
 show do |u|
    attributes_table do
        row :title
        row "Body" do (u.body).html_safe end
      end
      active_admin_comments
end
end
