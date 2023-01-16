require 'rails_helper'

RSpec.describe CastApi::Temperature, type: :request do
  context 'Get /temperature' do
    context 'Get current temperature' do
      it 'returns status: 200' do
        get '/api//weather/current'

        expect(response).to have_http_status(200)
      end
    end

    context 'Get health backend' do
      it 'returns status: 200' do
        get '/api//weather/health'

        expect(response).to have_http_status(200)
      end
    end

    context 'Get forecast for 24 hours' do
      it 'returns status: 200' do
        get '/api//weather/historical'

        expect(response).to have_http_status(200)
      end
    end

    context 'Get max temperature' do
      it 'returns status: 200' do
        get '/api//weather/historical/max'

        expect(response).to have_http_status(200)
      end
    end

    context 'Get min temperature' do
      it 'returns status: 200' do
        get '/api//weather/historical/min'

        expect(response).to have_http_status(200)
      end
    end

    context 'Get average temperature' do
      it 'returns status: 200' do
        get '/api//weather/historical/avg'

        expect(response).to have_http_status(200)
      end
    end

    context 'Get average temperature' do
      it 'returns status: 404' do
        get '/api//weather/by_time/124114'

        expect(response).to have_http_status(404)
      end
    end
  end
end


