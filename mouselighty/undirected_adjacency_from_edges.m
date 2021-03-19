function A = undirected_adjacency_from_edges(edges, node_count)
    % Convert an edge_count x 2 edges matrix containing node IDs to a
    % sparse undirected adjacency matrix.
    if ~exist('node_count', 'var') || isempty(node_count) ,
        node_count = max(max(edges)) ;
    end    
    dA = sparse(edges(:,1), ...
                edges(:,2), ...
                1, ...
                node_count, ...
                node_count) ;
    A = max(dA, dA') ;    
end
