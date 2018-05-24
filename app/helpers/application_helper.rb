module ApplicationHelper
  def full_title page_title = ""
    if page_title.empty?
      t "helpers.application_helper.base_title"
    else
      page_title + " | " + t("helpers.application_helper.base_title")
    end
  end
end
