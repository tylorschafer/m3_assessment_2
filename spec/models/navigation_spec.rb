require 'rails_helper'

describe Navigation do
  it 'exists' do
    params = {
      'duration' => '1 min',
      'steps' => [
        {'html_instructions' => "Head <b>southeast</b> on <b>17th St</b> toward <b>Larimer St</b>"},
        {'html_instructions' => "Turn <b>left</b> onto <b>Lawrence St</b><div style=\"font-size:0.9em\">Destination will be on the left</div>"}
      ]
    }

    navi = Navigation.new(params)

    expect(navi).to be_a Navigation
    expect(navi.duration).to eq(params['duration'])
    expect(navi.steps[0]).to eq(params['steps'][0])
    expect(navi.steps[1]).to eq(params['steps'][1])
  end
end
