ActiveAdmin.register Page do
  controller.authorize_resource
 #custom form
form :html => { :multipart => true } do |f|
f.inputs "Pages" do
 f.input :title
 f.input :body, :input_html => { :class => "ckeditor" }
 f.input :meta
end
 f.buttons
end  
index do
  column :title
# column :action
column "Body" do |d|
      (d.body).html_safe
end
column :meta
  default_actions
end
 show do |u|
    attributes_table do
        row :title
        row "Body" do (u.body).html_safe end
        row :meta

      end
      active_admin_comments
end
end
