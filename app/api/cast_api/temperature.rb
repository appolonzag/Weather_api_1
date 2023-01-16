module CastApi
  class Temperature < Grape::API
    prefix :api
    version 'weather'
    format :json

    resource :health do
      get do
        status :ok
      end
    end

    resource :current do
      get do
        Current.first
      end
    end

    resource :by_time do
      params do
        requires :epoch_time, type: Integer
      end

      get ':epoch_time' do
        if @result = Forecast.where(epoch_time: params[:epoch_time]) == [ ]
          status :not_found
        else
          Forecast.where(epoch_time: params[:epoch_time])
        end
      end
    end

    resource :historical do
      get do
        Forecast.all
      end

      resource :max do
        get do
          Forecast.where("temperature").min
        end
      end

      resource :min do
        get do
          Forecast.where("temperature").max
        end
      end

      resource :avg do
        get do
          Forecast.average(:temperature)
        end
      end
    end
  end
end
