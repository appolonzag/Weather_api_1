require 'rufus-scheduler'

s = Rufus::Scheduler.singleton

s.every '1h' do
  AccuWeather::UpdateDataService.call
end

s.cron '0 0 * * *' do
  Forecast.delete_all

  AccuWeather::AddDataService.call
end
