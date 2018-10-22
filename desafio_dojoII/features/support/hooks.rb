#require 'watir'

#Before do |scenario|
#  DataMagic.load_for_scenario(scenario)
#  @browser = Watir::Browser.new :chrome
#end

#language: pt
#utf-8

World (Helper)

After do |scenario|
  ## take screenshot
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
  if scenario.failed?
    take_screenshot(scenario_name.downcase!, 'failed')
  else
    take_screenshot(scenario_name.downcase!, 'passed')
  end
  
end