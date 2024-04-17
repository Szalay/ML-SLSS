classdef Conversion < handle  
	
	methods (Static)
		
		function Run()
			SimscapePackage = 'Components';
			Models = { ...
				{'PMSM'} ...
				};
			SimulinkLibrary = 'PMSM';
			
			ssc_build(SimscapePackage, '-output', SimulinkLibrary);

			s = load_system(SimulinkLibrary);
			set_param(s, 'Lock', 'off');
			fileattrib(get(s, 'FileName'), '+w');
			
			% Setting block porperties
			for i = 1:length(Models)
				m = Models{i};

				% Find the block handle
				blockPath = [get(s, 'Path'), '/', m{1}];
				block = get_param(blockPath, 'Handle');
				
				% Set the block sizes
				p = get(block, 'Position');
				p = [p(1:2), p(1:2) + [110, 110]];
				set(block, 'Position', p);
			end

			save_system(s);
			close_system(s);
		end

	end

end



