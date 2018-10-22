class DeleteTasks < SitePrism::Page

    element :dropdown_all, :xpath, '//a[text()="All"]'
    element :menu_task, :xpath, '//a[@href="?action=ajaxui#ajaxUILoc=index.php%3Fmodule%3DTasks%26action%3Dindex%26parentTab%3DAll"]'
    element :filter_button, :xpath, '//tr[@class="pagination-unique"]//a[@title="Filter"]'
    element :advanced_filter, :xpath, '//a[text()="Advanced Filter"]'
    element :subject_field, '#name_advanced'
    element :button_search, '#search_form_submit_advanced'
    element :search_field, :xpath, '//td[@type="name"]/b/a'
    element :button_actions, :xpath, '//a[text()="ACTIONS"]'
    element :button_delete, 'input[title="Delete"]'

    element :msg_validacao_del, :xpath, '//p[@class="msg emptyResults"]'
    
    def delete_page(task)
        dropdown_all.click
        menu_task.click
        wait_until_filter_button_visible
        filter_button.click
        wait_until_advanced_filter_visible
        advanced_filter.click
        subject_field.set(task)
        button_search.click
        search_field.click
        button_actions.click
        #binding.pry
        button_delete.click
        page.driver.browser.switch_to.alert.accept
    end

end