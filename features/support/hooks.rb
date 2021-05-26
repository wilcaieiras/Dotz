After do |_scenario|
  @method = if @response.request.http_method == Net::HTTP::Get
      "GET"
    elsif @response.request.http_method == Net::HTTP::Post
      "POST"
    elsif @response.request.http_method == Net::HTTP::Put
      "PUT"
    elsif @response.request.http_method == Net::HTTP::Patch
      "PATCH"
    elsif @response.request.http_method == Net::HTTP::Delete
      "DELETE"
    end

  if @response
    log "\n## REQUEST ##"
    log "METHOD => #{@method}"
    log "URI => #{@response.request.last_uri}"
  end

  if @response.request.options.include?(:body) == true
    puts "BODY REQUEST => #{@response.request.options[:body]}\n\n"
  end

  if !@response.body.nil?
    log "\n## RESPONSE ##"
    log "STATUS CODE => #{@response.code}"
    log "BODY RESPONSE => #{@response.body.force_encoding("UTF-8").to_json}\n\n"
  elsif puts "\n\n## RESPONSE ##"
    puts "STATUS CODE => #{@response.code}"
    puts "BODY RESPONSE => #{@response.body.to_json}\n\n"
  end
end

require "report_builder"
at_exit do
  ReportBuilder.configure do |config|
    config.input_path = "log/reports.json"
    config.report_path = "log/Report-#{Time.new.strftime("%Y%m%d_%H%M%S")}"
    config.report_types = [:html]
    config.report_tabs = %w[Overview Features Scenarios Errors]
    config.report_title = "Resultado Automação API Portadores"
    config.compress_images = false
    config.additional_info = { "API" => "Portadores" }
  end
  ReportBuilder.build_report
end
