<div class="col-md-12 table-responsive">
		<table class="table table-hover">
			<thead>
			<tr>
				<th>Name</th>
				<th>Launch</th>
				<th>Schedule</th>
				<th>Execution Count</th>
				<th>Last Execution Status</th>
			</tr>
			<tr>
			</tr>
			</thead>
			<tbody>
				<% for (var i in jobs) { %>
					<tr>
						<td><%= jobs[i].name %></td>
						<% if (jobs[i].launchable === true) { %>
								<td><button type="button" data-target="#job-params-modal" class="btn btn-default open-job-params" id="launch-<%= jobs[i].name %>">Launch</button></td>
								<td><button type="button" class="btn btn-default job-schedule" id="schedule-<%= jobs[i].name %>">Schedule</button></td>
						<% } else { %>
								<td></td>
								<td></td>
						<% } %>
						<td><%= jobs[i].executionCount %></td>
						<% if (jobs[i].exitStatus != null) { %>
							<td><%= jobs[i].exitStatus.exitCode %></td>
						<% } else { %>
							<td></td>
						<% } %>
					</tr>
				<% } %>
			</tbody>
		</table>
</div>
<div class="modal" id="job-params-modal" tabindex="-1" role="dialog" aria-labelledby="job-launch-label" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content" id="job-launch-modal">
		</div>
	</div>
</div>