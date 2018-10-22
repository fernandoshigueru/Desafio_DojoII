class AlterTasks < SitePrism::Page

    element :dropdown_all, :xpath, '//a[text()="All"]'
    element :menu_task, :xpath, '//a[@href="?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DTasks%26action%3Dindex%26parentTab%3DAll"]'
    element :filter_button, :xpath, '//tr[@class="pagination-unique"]//a[@title="Filter"]'
    element :advanced_filter, :xpath, '//a[text()="Advanced Filter"]'
    element :subject_field, '#name_advanced'
    element :status_field, '#status_advanced'
    element :button_search, '#search_form_submit_advanced'
    element :search_field, :xpath, '//td[@type="name"]/b/a'
    element :button_actions, :xpath, '//a[text()="ACTIONS"]'
    element :button_edit, 'input[title="Edit"]'
    element :name_edit, '#name'
    element :button_save, :xpath, '//input[@title="Save"]/following::input[16]'

    element :subject_upcase, :xpath, '//h2[@class="module-title-text"]'
    element :subject_field_alter, '#name'

    def page_edit(subject, status, edited)
        dropdown_all.click
        menu_task.click
        filter_button.click
        wait_until_filter_button_visible
        advanced_filter.click
        wait_until_subject_field_visible
        subject_field.set(subject)
        status_field.select(status)
        button_search.click
        #binding.pry
        search_field.click
        button_actions.click
        button_edit.click
        name_edit.set(edited)
        button_save.click
     end
end